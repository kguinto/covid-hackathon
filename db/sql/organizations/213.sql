
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
      'UPMC Jameson',
      '1211 Wilmington Ave
New Castle, PA 16105 ',
      'New Castle ',
      'PA',
      '',
      'Yes',
      '41.013401',
      '-80.3536706'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Jameson'
        AND o.latitude = '41.013401'
        AND o.longitude = '-80.3536706'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Jameson'
        AND o.latitude = '41.013401'
        AND o.longitude = '-80.3536706'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Jameson'
        AND o.latitude = '41.013401'
        AND o.longitude = '-80.3536706'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Jameson'
        AND o.latitude = '41.013401'
        AND o.longitude = '-80.3536706'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Jameson'
        AND o.latitude = '41.013401'
        AND o.longitude = '-80.3536706'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Jameson'
        AND o.latitude = '41.013401'
        AND o.longitude = '-80.3536706'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Jameson'
        AND o.latitude = '41.013401'
        AND o.longitude = '-80.3536706'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Jameson'
        AND o.latitude = '41.013401'
        AND o.longitude = '-80.3536706'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Jameson'
        AND o.latitude = '41.013401'
        AND o.longitude = '-80.3536706'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Jameson'
        AND o.latitude = '41.013401'
        AND o.longitude = '-80.3536706'));

COMMIT;
