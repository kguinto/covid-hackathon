
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
      'Methodist Charlton ',
      '3500 W Wheatland Rd
Dallas, TX 75237',
      'Dallas',
      'TX',
      'Come to the ER entrance',
      'Yes',
      '32.6453975',
      '-96.8764968'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Charlton '
        AND o.latitude = '32.6453975'
        AND o.longitude = '-96.8764968'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Charlton '
        AND o.latitude = '32.6453975'
        AND o.longitude = '-96.8764968'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Charlton '
        AND o.latitude = '32.6453975'
        AND o.longitude = '-96.8764968'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Charlton '
        AND o.latitude = '32.6453975'
        AND o.longitude = '-96.8764968'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Charlton '
        AND o.latitude = '32.6453975'
        AND o.longitude = '-96.8764968'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Charlton '
        AND o.latitude = '32.6453975'
        AND o.longitude = '-96.8764968'));

COMMIT;
