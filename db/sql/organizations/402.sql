
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
      'Interfaith Medical Center ',
      '1545 Atlantic Ave
Brooklyn, NY 11213',
      'New York - Brooklyn',
      'NY',
      'Jack Finkelstein at Jfinkelstein@interfaithmedical.org/929-340-1467; OR email ashapiro@interfaithmedical.org; OR ATTN: Dr. Lawrence Lai, llai@interfaithmedical.org; OR dropoff at Risk Management - East Building',
      'Yes',
      '40.6783744',
      '-73.9374075'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Interfaith Medical Center '
        AND o.latitude = '40.6783744'
        AND o.longitude = '-73.9374075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Interfaith Medical Center '
        AND o.latitude = '40.6783744'
        AND o.longitude = '-73.9374075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Interfaith Medical Center '
        AND o.latitude = '40.6783744'
        AND o.longitude = '-73.9374075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Interfaith Medical Center '
        AND o.latitude = '40.6783744'
        AND o.longitude = '-73.9374075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Interfaith Medical Center '
        AND o.latitude = '40.6783744'
        AND o.longitude = '-73.9374075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Interfaith Medical Center '
        AND o.latitude = '40.6783744'
        AND o.longitude = '-73.9374075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Interfaith Medical Center '
        AND o.latitude = '40.6783744'
        AND o.longitude = '-73.9374075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Interfaith Medical Center '
        AND o.latitude = '40.6783744'
        AND o.longitude = '-73.9374075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Interfaith Medical Center '
        AND o.latitude = '40.6783744'
        AND o.longitude = '-73.9374075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Interfaith Medical Center '
        AND o.latitude = '40.6783744'
        AND o.longitude = '-73.9374075'));

COMMIT;
