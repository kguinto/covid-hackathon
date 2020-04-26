
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
      'Rochester Regional Urgent Care',
      '10 Clinton Pl
Fairport, NY 14450',
      'Fairport',
      'NY',
      'Mail to Home Address',
      'Yes',
      '43.0965235',
      '-77.4427407'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rochester Regional Urgent Care'
        AND o.latitude = '43.0965235'
        AND o.longitude = '-77.4427407'));

COMMIT;
