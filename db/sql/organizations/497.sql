
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
      'Terrell Clinic',
      '701 E Reelfoot Ave #100
Union City, TN 38261',
      'Union City',
      'TN',
      '',
      'Unsure',
      '36.4129998',
      '-89.0508641'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terrell Clinic'
        AND o.latitude = '36.4129998'
        AND o.longitude = '-89.0508641'));

COMMIT;
