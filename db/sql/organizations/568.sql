
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
      'Wahiawa General Hospital',
      '128 Lehua St
Wahiawa, HI 96786',
      'Wahiawa',
      'HI',
      'I will pick it up if needed, can drop off at front lobby',
      'Unsure',
      '21.4990365',
      '-158.0262249'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wahiawa General Hospital'
        AND o.latitude = '21.4990365'
        AND o.longitude = '-158.0262249'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wahiawa General Hospital'
        AND o.latitude = '21.4990365'
        AND o.longitude = '-158.0262249'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wahiawa General Hospital'
        AND o.latitude = '21.4990365'
        AND o.longitude = '-158.0262249'));

COMMIT;
