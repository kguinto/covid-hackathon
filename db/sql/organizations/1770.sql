
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
      'Virtua Our Lady of Lourdes Emergency Department',
      '1600 Haddon Ave
Camden, NJ 08103',
      'Camden ',
      'NJ',
      'Security desk in ER waiting room is fine-Attn: Paul Eckert',
      'Yes',
      '39.9279261',
      '-75.0949231'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virtua Our Lady of Lourdes Emergency Department'
        AND o.latitude = '39.9279261'
        AND o.longitude = '-75.0949231'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virtua Our Lady of Lourdes Emergency Department'
        AND o.latitude = '39.9279261'
        AND o.longitude = '-75.0949231'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virtua Our Lady of Lourdes Emergency Department'
        AND o.latitude = '39.9279261'
        AND o.longitude = '-75.0949231'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virtua Our Lady of Lourdes Emergency Department'
        AND o.latitude = '39.9279261'
        AND o.longitude = '-75.0949231'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virtua Our Lady of Lourdes Emergency Department'
        AND o.latitude = '39.9279261'
        AND o.longitude = '-75.0949231'));

COMMIT;
