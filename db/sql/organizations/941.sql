
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
      'South Madison Community Foundation',
      '233 S. Main St.
Pendleton, IN 46064',
      'Pendleton ',
      'IN',
      'Please call the following number 765-778-8444 before dropping off items. The United Way of Madison County will distribute to local area hospitals. ',
      'Please call the following number 765-778-8444 and see if they except open boxes/bags',
      '40.0000546',
      '-85.7470964'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Madison Community Foundation'
        AND o.latitude = '40.0000546'
        AND o.longitude = '-85.7470964'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Madison Community Foundation'
        AND o.latitude = '40.0000546'
        AND o.longitude = '-85.7470964'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Madison Community Foundation'
        AND o.latitude = '40.0000546'
        AND o.longitude = '-85.7470964'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Madison Community Foundation'
        AND o.latitude = '40.0000546'
        AND o.longitude = '-85.7470964'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Madison Community Foundation'
        AND o.latitude = '40.0000546'
        AND o.longitude = '-85.7470964'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'South Madison Community Foundation'
        AND o.latitude = '40.0000546'
        AND o.longitude = '-85.7470964'));

COMMIT;
