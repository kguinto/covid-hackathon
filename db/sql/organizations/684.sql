
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
      'Care Ambulance',
      '12160 Mora Dr
Santa Fe Springs, CA 90670',
      'Santa Fe Springs',
      'CA',
      'Attn: Lyle Hanson',
      'Yes',
      '33.9393452',
      '-118.0737676'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Care Ambulance'
        AND o.latitude = '33.9393452'
        AND o.longitude = '-118.0737676'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Care Ambulance'
        AND o.latitude = '33.9393452'
        AND o.longitude = '-118.0737676'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Care Ambulance'
        AND o.latitude = '33.9393452'
        AND o.longitude = '-118.0737676'));

COMMIT;
