
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
      'Tule River Indian Health Center, Inc',
      '380 Indian Reservation Dr
Porterville, CA 93257',
      'Porterville',
      'CA',
      '380 N Reservation Road',
      'No',
      '36.0284957',
      '-118.7974015'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tule River Indian Health Center, Inc'
        AND o.latitude = '36.0284957'
        AND o.longitude = '-118.7974015'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tule River Indian Health Center, Inc'
        AND o.latitude = '36.0284957'
        AND o.longitude = '-118.7974015'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tule River Indian Health Center, Inc'
        AND o.latitude = '36.0284957'
        AND o.longitude = '-118.7974015'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tule River Indian Health Center, Inc'
        AND o.latitude = '36.0284957'
        AND o.longitude = '-118.7974015'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tule River Indian Health Center, Inc'
        AND o.latitude = '36.0284957'
        AND o.longitude = '-118.7974015'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tule River Indian Health Center, Inc'
        AND o.latitude = '36.0284957'
        AND o.longitude = '-118.7974015'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tule River Indian Health Center, Inc'
        AND o.latitude = '36.0284957'
        AND o.longitude = '-118.7974015'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tule River Indian Health Center, Inc'
        AND o.latitude = '36.0284957'
        AND o.longitude = '-118.7974015'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tule River Indian Health Center, Inc'
        AND o.latitude = '36.0284957'
        AND o.longitude = '-118.7974015'));

COMMIT;
