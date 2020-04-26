
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
      'Grant Cuesta Sub-Acute and Rehabilitation Center ',
      '1949 Grant Rd
Mountain View, CA 94040',
      'Mountain View ',
      'CA',
      'Front patio ',
      'Yes',
      '37.3736851',
      '-122.0769619'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grant Cuesta Sub-Acute and Rehabilitation Center '
        AND o.latitude = '37.3736851'
        AND o.longitude = '-122.0769619'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grant Cuesta Sub-Acute and Rehabilitation Center '
        AND o.latitude = '37.3736851'
        AND o.longitude = '-122.0769619'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grant Cuesta Sub-Acute and Rehabilitation Center '
        AND o.latitude = '37.3736851'
        AND o.longitude = '-122.0769619'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grant Cuesta Sub-Acute and Rehabilitation Center '
        AND o.latitude = '37.3736851'
        AND o.longitude = '-122.0769619'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grant Cuesta Sub-Acute and Rehabilitation Center '
        AND o.latitude = '37.3736851'
        AND o.longitude = '-122.0769619'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grant Cuesta Sub-Acute and Rehabilitation Center '
        AND o.latitude = '37.3736851'
        AND o.longitude = '-122.0769619'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grant Cuesta Sub-Acute and Rehabilitation Center '
        AND o.latitude = '37.3736851'
        AND o.longitude = '-122.0769619'));

COMMIT;
