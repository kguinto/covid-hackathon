
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
      'Emergency Care Specialists ',
      '4100 Embassy Dr SE #400
Grand Rapids, MI 49546',
      'Kentwood ',
      'MI',
      'Items could be dropped at our office.    Please call or email me to coordinate. ',
      'Yes',
      '42.9164863',
      '-85.5669188'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emergency Care Specialists '
        AND o.latitude = '42.9164863'
        AND o.longitude = '-85.5669188'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emergency Care Specialists '
        AND o.latitude = '42.9164863'
        AND o.longitude = '-85.5669188'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emergency Care Specialists '
        AND o.latitude = '42.9164863'
        AND o.longitude = '-85.5669188'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emergency Care Specialists '
        AND o.latitude = '42.9164863'
        AND o.longitude = '-85.5669188'));

COMMIT;
