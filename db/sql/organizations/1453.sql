
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
      'Doylestown Hospital',
      '595 W State St
Doylestown, PA 18901',
      'Doylestown',
      'PA',
      'Shipping ATTN: DONATIONS; on-site drop-off at RECEIVING',
      'Yes',
      '40.3056669',
      '-75.1463292'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Doylestown Hospital'
        AND o.latitude = '40.3056669'
        AND o.longitude = '-75.1463292'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Doylestown Hospital'
        AND o.latitude = '40.3056669'
        AND o.longitude = '-75.1463292'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Doylestown Hospital'
        AND o.latitude = '40.3056669'
        AND o.longitude = '-75.1463292'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Doylestown Hospital'
        AND o.latitude = '40.3056669'
        AND o.longitude = '-75.1463292'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Doylestown Hospital'
        AND o.latitude = '40.3056669'
        AND o.longitude = '-75.1463292'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Doylestown Hospital'
        AND o.latitude = '40.3056669'
        AND o.longitude = '-75.1463292'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Doylestown Hospital'
        AND o.latitude = '40.3056669'
        AND o.longitude = '-75.1463292'));

COMMIT;
