
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
      'Nhan Hoa Comprehensive Health Care Clinic (FQHC)',
      '7761 Garden Grove Blvd
Garden Grove, CA 92841',
      'Garden Grove',
      'CA',
      'ATTN: Jenny Nguyen',
      'No',
      '33.7742038',
      '-117.996696'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nhan Hoa Comprehensive Health Care Clinic (FQHC)'
        AND o.latitude = '33.7742038'
        AND o.longitude = '-117.996696'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nhan Hoa Comprehensive Health Care Clinic (FQHC)'
        AND o.latitude = '33.7742038'
        AND o.longitude = '-117.996696'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nhan Hoa Comprehensive Health Care Clinic (FQHC)'
        AND o.latitude = '33.7742038'
        AND o.longitude = '-117.996696'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nhan Hoa Comprehensive Health Care Clinic (FQHC)'
        AND o.latitude = '33.7742038'
        AND o.longitude = '-117.996696'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nhan Hoa Comprehensive Health Care Clinic (FQHC)'
        AND o.latitude = '33.7742038'
        AND o.longitude = '-117.996696'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nhan Hoa Comprehensive Health Care Clinic (FQHC)'
        AND o.latitude = '33.7742038'
        AND o.longitude = '-117.996696'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nhan Hoa Comprehensive Health Care Clinic (FQHC)'
        AND o.latitude = '33.7742038'
        AND o.longitude = '-117.996696'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nhan Hoa Comprehensive Health Care Clinic (FQHC)'
        AND o.latitude = '33.7742038'
        AND o.longitude = '-117.996696'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nhan Hoa Comprehensive Health Care Clinic (FQHC)'
        AND o.latitude = '33.7742038'
        AND o.longitude = '-117.996696'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nhan Hoa Comprehensive Health Care Clinic (FQHC)'
        AND o.latitude = '33.7742038'
        AND o.longitude = '-117.996696'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Tylenol Adults and Children',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nhan Hoa Comprehensive Health Care Clinic (FQHC)'
        AND o.latitude = '33.7742038'
        AND o.longitude = '-117.996696'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Acetaminophen',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nhan Hoa Comprehensive Health Care Clinic (FQHC)'
        AND o.latitude = '33.7742038'
        AND o.longitude = '-117.996696'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('OTC.',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nhan Hoa Comprehensive Health Care Clinic (FQHC)'
        AND o.latitude = '33.7742038'
        AND o.longitude = '-117.996696'));

COMMIT;
