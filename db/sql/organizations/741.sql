
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
      '24/7 Care at Home Hospice',
      ' 13800 Arizona St #200
Westminster, CA 92683',
      'Westminster',
      'CA',
      '13800 Arizona St., Westminster, CA.  92683 ATTN: Larry Nguyen PLEASE KNOCK IF YOU ARE AT THE BUILDING THERE ARE A FEW PEOPLE IN HERE TO PROVIDE SUPPLIES TO PATIENTS AND NURSES.',
      'Yes',
      '33.7617716',
      '-117.9950947'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = '24/7 Care at Home Hospice'
        AND o.latitude = '33.7617716'
        AND o.longitude = '-117.9950947'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = '24/7 Care at Home Hospice'
        AND o.latitude = '33.7617716'
        AND o.longitude = '-117.9950947'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = '24/7 Care at Home Hospice'
        AND o.latitude = '33.7617716'
        AND o.longitude = '-117.9950947'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = '24/7 Care at Home Hospice'
        AND o.latitude = '33.7617716'
        AND o.longitude = '-117.9950947'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = '24/7 Care at Home Hospice'
        AND o.latitude = '33.7617716'
        AND o.longitude = '-117.9950947'));

COMMIT;
