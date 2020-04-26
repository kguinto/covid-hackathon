
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
      'Maimonides Medical Center',
      '1025 48th St
Brooklyn, NY 11219',
      'New York - Brooklyn ',
      'NY',
      'Drop off Monday thru Friday or Shipped',
      'Yes',
      '40.6395577',
      '-73.9975109'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maimonides Medical Center'
        AND o.latitude = '40.6395577'
        AND o.longitude = '-73.9975109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maimonides Medical Center'
        AND o.latitude = '40.6395577'
        AND o.longitude = '-73.9975109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maimonides Medical Center'
        AND o.latitude = '40.6395577'
        AND o.longitude = '-73.9975109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maimonides Medical Center'
        AND o.latitude = '40.6395577'
        AND o.longitude = '-73.9975109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maimonides Medical Center'
        AND o.latitude = '40.6395577'
        AND o.longitude = '-73.9975109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maimonides Medical Center'
        AND o.latitude = '40.6395577'
        AND o.longitude = '-73.9975109'));

COMMIT;
