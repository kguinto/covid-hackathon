
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
      'Hendricks Regional Heath',
      '1000 E Main St
Danville, IN 46122',
      'Danville',
      'IN',
      '',
      'Yes',
      '39.762559',
      '-86.5015563'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hendricks Regional Heath'
        AND o.latitude = '39.762559'
        AND o.longitude = '-86.5015563'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hendricks Regional Heath'
        AND o.latitude = '39.762559'
        AND o.longitude = '-86.5015563'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hendricks Regional Heath'
        AND o.latitude = '39.762559'
        AND o.longitude = '-86.5015563'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hendricks Regional Heath'
        AND o.latitude = '39.762559'
        AND o.longitude = '-86.5015563'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hendricks Regional Heath'
        AND o.latitude = '39.762559'
        AND o.longitude = '-86.5015563'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hendricks Regional Heath'
        AND o.latitude = '39.762559'
        AND o.longitude = '-86.5015563'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hendricks Regional Heath'
        AND o.latitude = '39.762559'
        AND o.longitude = '-86.5015563'));

COMMIT;
