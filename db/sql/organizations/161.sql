
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
      'UNC Rex Hospital',
      '4200 Lake Boone Trail
Raleigh, NC 27607',
      'Raleigh',
      'NC',
      'Drop off at wellness center March 23-27 9AM-4PM',
      'Yes',
      '35.8158562',
      '-78.7010717'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UNC Rex Hospital'
        AND o.latitude = '35.8158562'
        AND o.longitude = '-78.7010717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UNC Rex Hospital'
        AND o.latitude = '35.8158562'
        AND o.longitude = '-78.7010717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UNC Rex Hospital'
        AND o.latitude = '35.8158562'
        AND o.longitude = '-78.7010717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'UNC Rex Hospital'
        AND o.latitude = '35.8158562'
        AND o.longitude = '-78.7010717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UNC Rex Hospital'
        AND o.latitude = '35.8158562'
        AND o.longitude = '-78.7010717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UNC Rex Hospital'
        AND o.latitude = '35.8158562'
        AND o.longitude = '-78.7010717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UNC Rex Hospital'
        AND o.latitude = '35.8158562'
        AND o.longitude = '-78.7010717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UNC Rex Hospital'
        AND o.latitude = '35.8158562'
        AND o.longitude = '-78.7010717'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UNC Rex Hospital'
        AND o.latitude = '35.8158562'
        AND o.longitude = '-78.7010717'));

COMMIT;
