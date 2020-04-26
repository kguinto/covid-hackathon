
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
      'Orchardview Villa',
      '135 Tripps Ln
Riverside, RI 02915',
      'Riverside ',
      'RI',
      '',
      'Yes',
      '41.7902534',
      '-71.3553207'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orchardview Villa'
        AND o.latitude = '41.7902534'
        AND o.longitude = '-71.3553207'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orchardview Villa'
        AND o.latitude = '41.7902534'
        AND o.longitude = '-71.3553207'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orchardview Villa'
        AND o.latitude = '41.7902534'
        AND o.longitude = '-71.3553207'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orchardview Villa'
        AND o.latitude = '41.7902534'
        AND o.longitude = '-71.3553207'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orchardview Villa'
        AND o.latitude = '41.7902534'
        AND o.longitude = '-71.3553207'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orchardview Villa'
        AND o.latitude = '41.7902534'
        AND o.longitude = '-71.3553207'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orchardview Villa'
        AND o.latitude = '41.7902534'
        AND o.longitude = '-71.3553207'));

COMMIT;
