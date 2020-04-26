
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
      'Coming Home Hospice',
      '115 Diamond St
San Francisco, CA 94114',
      'San Francisco',
      'CA',
      'Attn: Liezel/Monica',
      'Yes',
      '37.7604199',
      '-122.4368815'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coming Home Hospice'
        AND o.latitude = '37.7604199'
        AND o.longitude = '-122.4368815'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coming Home Hospice'
        AND o.latitude = '37.7604199'
        AND o.longitude = '-122.4368815'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coming Home Hospice'
        AND o.latitude = '37.7604199'
        AND o.longitude = '-122.4368815'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coming Home Hospice'
        AND o.latitude = '37.7604199'
        AND o.longitude = '-122.4368815'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coming Home Hospice'
        AND o.latitude = '37.7604199'
        AND o.longitude = '-122.4368815'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coming Home Hospice'
        AND o.latitude = '37.7604199'
        AND o.longitude = '-122.4368815'));

COMMIT;
