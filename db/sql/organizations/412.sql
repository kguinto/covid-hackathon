
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
      'Barnes Jewish Hospital',
      '1 Barnes Jewish Hospital Plaza
St. Louis, MO 63110',
      'St. Louis',
      'MO',
      'Unsure',
      'unsure',
      '38.6352337',
      '-90.2648651'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Barnes Jewish Hospital'
        AND o.latitude = '38.6352337'
        AND o.longitude = '-90.2648651'));

COMMIT;
