
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
      'Legacy Hospice',
      '650 Peter Jefferson Pkwy #310
Charlottesville, VA 22911',
      'Charlottesville ',
      'VA',
      '',
      'new & unused items only please',
      '38.0219325',
      '-78.4349601'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Hospice'
        AND o.latitude = '38.0219325'
        AND o.longitude = '-78.4349601'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Hospice'
        AND o.latitude = '38.0219325'
        AND o.longitude = '-78.4349601'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Hospice'
        AND o.latitude = '38.0219325'
        AND o.longitude = '-78.4349601'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Hospice'
        AND o.latitude = '38.0219325'
        AND o.longitude = '-78.4349601'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Hospice'
        AND o.latitude = '38.0219325'
        AND o.longitude = '-78.4349601'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Hospice'
        AND o.latitude = '38.0219325'
        AND o.longitude = '-78.4349601'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Hospice'
        AND o.latitude = '38.0219325'
        AND o.longitude = '-78.4349601'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Hospice'
        AND o.latitude = '38.0219325'
        AND o.longitude = '-78.4349601'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Hospice'
        AND o.latitude = '38.0219325'
        AND o.longitude = '-78.4349601'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Hospice'
        AND o.latitude = '38.0219325'
        AND o.longitude = '-78.4349601'));

COMMIT;
