
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
      'New Milford VNA and Hospice',
      '68 Park Lane Rd
New Milford, CT 06776',
      'New Milford',
      'CT',
      'We have a table outside our front door for drop offs',
      'If boxes are open but equipment is sealed, yes',
      '41.5987092',
      '-73.4064548'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Milford VNA and Hospice'
        AND o.latitude = '41.5987092'
        AND o.longitude = '-73.4064548'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Milford VNA and Hospice'
        AND o.latitude = '41.5987092'
        AND o.longitude = '-73.4064548'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Milford VNA and Hospice'
        AND o.latitude = '41.5987092'
        AND o.longitude = '-73.4064548'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Milford VNA and Hospice'
        AND o.latitude = '41.5987092'
        AND o.longitude = '-73.4064548'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Milford VNA and Hospice'
        AND o.latitude = '41.5987092'
        AND o.longitude = '-73.4064548'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Milford VNA and Hospice'
        AND o.latitude = '41.5987092'
        AND o.longitude = '-73.4064548'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Milford VNA and Hospice'
        AND o.latitude = '41.5987092'
        AND o.longitude = '-73.4064548'));

COMMIT;
