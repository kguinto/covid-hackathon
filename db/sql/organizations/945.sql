
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
      'The United Way of Madison County',
      '208 S. Anderson St.
Elwood, IN 46036',
      'Elwood ',
      'IN',
      'Please call the following number 765-778-8444 before dropping off items. The United Way of Madison County will distribute to local area hospitals. ',
      'Please call the following number 765-778-8444 to see if they except open boxes/bags ',
      '40.275642',
      '-85.8422651'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The United Way of Madison County'
        AND o.latitude = '40.275642'
        AND o.longitude = '-85.8422651'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The United Way of Madison County'
        AND o.latitude = '40.275642'
        AND o.longitude = '-85.8422651'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The United Way of Madison County'
        AND o.latitude = '40.275642'
        AND o.longitude = '-85.8422651'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'The United Way of Madison County'
        AND o.latitude = '40.275642'
        AND o.longitude = '-85.8422651'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The United Way of Madison County'
        AND o.latitude = '40.275642'
        AND o.longitude = '-85.8422651'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The United Way of Madison County'
        AND o.latitude = '40.275642'
        AND o.longitude = '-85.8422651'));

COMMIT;
