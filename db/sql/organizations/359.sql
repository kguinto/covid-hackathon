
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
      'Lansing Urgent Care - West Lansing',
      '4440 W Saginaw Hwy
Lansing, MI 48917',
      'Lansing',
      'MI',
      'Unknown',
      'Unsure',
      '42.7414977',
      '-84.6129567'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lansing Urgent Care - West Lansing'
        AND o.latitude = '42.7414977'
        AND o.longitude = '-84.6129567'));

COMMIT;
