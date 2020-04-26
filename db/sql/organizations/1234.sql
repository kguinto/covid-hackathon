
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
      'DHS: Indiana Department of Homeland Security District 1',
      'Gary/Chicago International Airport
6001 Airport Rd, Gary, IN 46406',
      'Gary',
      'IN',
      'Call for pickup 219-576-2786',
      'No',
      '41.6177844',
      '-87.4083934'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'DHS: Indiana Department of Homeland Security District 1'
        AND o.latitude = '41.6177844'
        AND o.longitude = '-87.4083934'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'DHS: Indiana Department of Homeland Security District 1'
        AND o.latitude = '41.6177844'
        AND o.longitude = '-87.4083934'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'DHS: Indiana Department of Homeland Security District 1'
        AND o.latitude = '41.6177844'
        AND o.longitude = '-87.4083934'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'DHS: Indiana Department of Homeland Security District 1'
        AND o.latitude = '41.6177844'
        AND o.longitude = '-87.4083934'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'DHS: Indiana Department of Homeland Security District 1'
        AND o.latitude = '41.6177844'
        AND o.longitude = '-87.4083934'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'DHS: Indiana Department of Homeland Security District 1'
        AND o.latitude = '41.6177844'
        AND o.longitude = '-87.4083934'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'DHS: Indiana Department of Homeland Security District 1'
        AND o.latitude = '41.6177844'
        AND o.longitude = '-87.4083934'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'DHS: Indiana Department of Homeland Security District 1'
        AND o.latitude = '41.6177844'
        AND o.longitude = '-87.4083934'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'DHS: Indiana Department of Homeland Security District 1'
        AND o.latitude = '41.6177844'
        AND o.longitude = '-87.4083934'));

COMMIT;
