
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'NYU Langone Hospital - Brooklyn',
      '150 55th St
Brooklyn, NY 11220',
      'New York - Brooklyn',
      'NY',
      'Limted to 2 boxes only for in-person dropoffs. Drop off at Loading Dock on 1st Ave between 55th and 56th. M-F 9AM-5PM.  See https://nyulangone.org/give/funds/covid-19 for more details and signup form.',
      '',
      '40.6466634',
      '-74.0209235'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Hospital - Brooklyn'
        AND o.latitude = '40.6466634'
        AND o.longitude = '-74.0209235'));

COMMIT;
