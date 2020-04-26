
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
      'Good Samaritan Medical Center ',
      '235 N Pearl St
Brockton, MA 02301',
      'Brockton ',
      'MA',
      '6am-8pm, 7-days a week: bring PPE donations to main lobby (blue awning/HoneyDew entrance). Ask for security guard assistance or follow signage indicating donation drop off area. 

After hours: please bring to main ER entrance, security or registration will assist you

If any questions can call during normal business hours, you can ask for Wayne A. (Director of Security) ',
      'Yes',
      '42.0978285',
      '-71.0615518'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan Medical Center '
        AND o.latitude = '42.0978285'
        AND o.longitude = '-71.0615518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan Medical Center '
        AND o.latitude = '42.0978285'
        AND o.longitude = '-71.0615518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan Medical Center '
        AND o.latitude = '42.0978285'
        AND o.longitude = '-71.0615518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan Medical Center '
        AND o.latitude = '42.0978285'
        AND o.longitude = '-71.0615518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan Medical Center '
        AND o.latitude = '42.0978285'
        AND o.longitude = '-71.0615518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan Medical Center '
        AND o.latitude = '42.0978285'
        AND o.longitude = '-71.0615518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan Medical Center '
        AND o.latitude = '42.0978285'
        AND o.longitude = '-71.0615518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan Medical Center '
        AND o.latitude = '42.0978285'
        AND o.longitude = '-71.0615518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan Medical Center '
        AND o.latitude = '42.0978285'
        AND o.longitude = '-71.0615518'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan Medical Center '
        AND o.latitude = '42.0978285'
        AND o.longitude = '-71.0615518'));

COMMIT;
