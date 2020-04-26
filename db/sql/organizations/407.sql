
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
      'Fresenius Kidney Care',
      '1111 S Arroyo Pkwy Ste 150
Pasadena, CA 91105',
      'Pasadena',
      'CA',
      '',
      'Yes',
      '34.1277561',
      '-118.1476057'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fresenius Kidney Care'
        AND o.latitude = '34.1277561'
        AND o.longitude = '-118.1476057'));

COMMIT;
