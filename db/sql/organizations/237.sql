
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
      'UConn Health ',
      '263 Farmington Ave
Farmington, CT 06030',
      'Farmington ',
      'CT',
      'W Recv Dock',
      '',
      '41.7344559',
      '-72.7956006'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UConn Health '
        AND o.latitude = '41.7344559'
        AND o.longitude = '-72.7956006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UConn Health '
        AND o.latitude = '41.7344559'
        AND o.longitude = '-72.7956006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UConn Health '
        AND o.latitude = '41.7344559'
        AND o.longitude = '-72.7956006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'UConn Health '
        AND o.latitude = '41.7344559'
        AND o.longitude = '-72.7956006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UConn Health '
        AND o.latitude = '41.7344559'
        AND o.longitude = '-72.7956006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UConn Health '
        AND o.latitude = '41.7344559'
        AND o.longitude = '-72.7956006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UConn Health '
        AND o.latitude = '41.7344559'
        AND o.longitude = '-72.7956006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UConn Health '
        AND o.latitude = '41.7344559'
        AND o.longitude = '-72.7956006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UConn Health '
        AND o.latitude = '41.7344559'
        AND o.longitude = '-72.7956006'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'UConn Health '
        AND o.latitude = '41.7344559'
        AND o.longitude = '-72.7956006'));

COMMIT;
