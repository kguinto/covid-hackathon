
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
      'Beebe Healthcare',
      '424 Savannah Rd
Lewes, DE 19958',
      'Lewes',
      'DE',
      'Please call 302-645-3740 & let us know expected arrival- someone will meet you to accept the delivery. Our manager''s name is April and she will gladly accept anything you can offer. Thank you SO MUCH & May God bless you',
      'Yes',
      '38.7726305',
      '-75.144277'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beebe Healthcare'
        AND o.latitude = '38.7726305'
        AND o.longitude = '-75.144277'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beebe Healthcare'
        AND o.latitude = '38.7726305'
        AND o.longitude = '-75.144277'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beebe Healthcare'
        AND o.latitude = '38.7726305'
        AND o.longitude = '-75.144277'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beebe Healthcare'
        AND o.latitude = '38.7726305'
        AND o.longitude = '-75.144277'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beebe Healthcare'
        AND o.latitude = '38.7726305'
        AND o.longitude = '-75.144277'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beebe Healthcare'
        AND o.latitude = '38.7726305'
        AND o.longitude = '-75.144277'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beebe Healthcare'
        AND o.latitude = '38.7726305'
        AND o.longitude = '-75.144277'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beebe Healthcare'
        AND o.latitude = '38.7726305'
        AND o.longitude = '-75.144277'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beebe Healthcare'
        AND o.latitude = '38.7726305'
        AND o.longitude = '-75.144277'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beebe Healthcare'
        AND o.latitude = '38.7726305'
        AND o.longitude = '-75.144277'));

COMMIT;
