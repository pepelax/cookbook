"""
This example demostrates how to catch keyboard interruption
and finish program correctly
"""

def main():
    """Program entry point"""
    try:
        print('Press Ctrl+C for exit...')
        while True:
            pass
    except KeyboardInterrupt:
        print('KeyboardInterrupt')

if __name__ == '__main__':
    print('start')
    main()
    print('done')