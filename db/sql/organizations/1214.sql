
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
      'Waterview Villa Nursing Home',
      '1275 S Broadway
East Providence, RI 02914',
      'East Providence',
      'RI',
      '',
      'Yes',
      '41.8070772',
      '-71.3734082'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waterview Villa Nursing Home'
        AND o.latitude = '41.8070772'
        AND o.longitude = '-71.3734082'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waterview Villa Nursing Home'
        AND o.latitude = '41.8070772'
        AND o.longitude = '-71.3734082'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waterview Villa Nursing Home'
        AND o.latitude = '41.8070772'
        AND o.longitude = '-71.3734082'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waterview Villa Nursing Home'
        AND o.latitude = '41.8070772'
        AND o.longitude = '-71.3734082'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waterview Villa Nursing Home'
        AND o.latitude = '41.8070772'
        AND o.longitude = '-71.3734082'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waterview Villa Nursing Home'
        AND o.latitude = '41.8070772'
        AND o.longitude = '-71.3734082'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waterview Villa Nursing Home'
        AND o.latitude = '41.8070772'
        AND o.longitude = '-71.3734082'));

COMMIT;
