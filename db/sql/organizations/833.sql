
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
      'Hospice of the Fisher Home',
      '1165 North Pleasant Street
Amherst, MA 01002',
      'Amherst',
      'MA',
      '',
      '',
      '42.4093551',
      '-72.5296797'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the Fisher Home'
        AND o.latitude = '42.4093551'
        AND o.longitude = '-72.5296797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the Fisher Home'
        AND o.latitude = '42.4093551'
        AND o.longitude = '-72.5296797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the Fisher Home'
        AND o.latitude = '42.4093551'
        AND o.longitude = '-72.5296797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the Fisher Home'
        AND o.latitude = '42.4093551'
        AND o.longitude = '-72.5296797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the Fisher Home'
        AND o.latitude = '42.4093551'
        AND o.longitude = '-72.5296797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the Fisher Home'
        AND o.latitude = '42.4093551'
        AND o.longitude = '-72.5296797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the Fisher Home'
        AND o.latitude = '42.4093551'
        AND o.longitude = '-72.5296797'));

COMMIT;
