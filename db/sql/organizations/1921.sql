
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
      'Cottage Hospital',
      '102 Highland Ave
St Johnsbury, VT 05819',
      'Saint Johnsbury',
      'VT',
      '',
      'Yes',
      '44.4182885',
      '-72.0253124'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cottage Hospital'
        AND o.latitude = '44.4182885'
        AND o.longitude = '-72.0253124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cottage Hospital'
        AND o.latitude = '44.4182885'
        AND o.longitude = '-72.0253124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cottage Hospital'
        AND o.latitude = '44.4182885'
        AND o.longitude = '-72.0253124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cottage Hospital'
        AND o.latitude = '44.4182885'
        AND o.longitude = '-72.0253124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cottage Hospital'
        AND o.latitude = '44.4182885'
        AND o.longitude = '-72.0253124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cottage Hospital'
        AND o.latitude = '44.4182885'
        AND o.longitude = '-72.0253124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cottage Hospital'
        AND o.latitude = '44.4182885'
        AND o.longitude = '-72.0253124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cottage Hospital'
        AND o.latitude = '44.4182885'
        AND o.longitude = '-72.0253124'));

COMMIT;
