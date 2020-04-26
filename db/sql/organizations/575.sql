
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
      'Winfield Fire Protection District',
      '27W530 High Lake Rd
Winfield, IL 60190',
      'Winfield',
      'IL',
      'Any',
      'Unsure',
      '41.8714845',
      '-88.1591369'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Winfield Fire Protection District'
        AND o.latitude = '41.8714845'
        AND o.longitude = '-88.1591369'));

COMMIT;
