
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
      'Waikiki Health',
      '277 ʻŌhua Ave
Honolulu, HI 96815',
      'Honolulu',
      'HI',
      'Items may be dropped off at 277 Ohua Avenue, Honolulu, HI 96815.  If you will call ahead we are happy to meet you curbside.  808 922-4787.  You can also mail to this address to the attention of Phyllis. Thank you!
',
      'Yes',
      '21.2755668',
      '-157.8204885'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waikiki Health'
        AND o.latitude = '21.2755668'
        AND o.longitude = '-157.8204885'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waikiki Health'
        AND o.latitude = '21.2755668'
        AND o.longitude = '-157.8204885'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waikiki Health'
        AND o.latitude = '21.2755668'
        AND o.longitude = '-157.8204885'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waikiki Health'
        AND o.latitude = '21.2755668'
        AND o.longitude = '-157.8204885'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waikiki Health'
        AND o.latitude = '21.2755668'
        AND o.longitude = '-157.8204885'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waikiki Health'
        AND o.latitude = '21.2755668'
        AND o.longitude = '-157.8204885'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waikiki Health'
        AND o.latitude = '21.2755668'
        AND o.longitude = '-157.8204885'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waikiki Health'
        AND o.latitude = '21.2755668'
        AND o.longitude = '-157.8204885'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Waikiki Health'
        AND o.latitude = '21.2755668'
        AND o.longitude = '-157.8204885'));

COMMIT;
