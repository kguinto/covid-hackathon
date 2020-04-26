
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
      'Fox Valley Cardiovascular Group',
      '2216 Periwinkle Ln
Naperville, IL 60540',
      'Naperville',
      'IL',
      'Dr Christy',
      'No',
      '41.7593466',
      '-88.1912659'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fox Valley Cardiovascular Group'
        AND o.latitude = '41.7593466'
        AND o.longitude = '-88.1912659'));

COMMIT;
