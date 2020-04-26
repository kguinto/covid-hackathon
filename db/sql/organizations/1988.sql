
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
      '1307 Savannah Rd
Lewes, DE 19958',
      'Lewes',
      'DE',
      'Bins available for small quantity drop-off donations Monday - Friday from 8am - 5pm at Beebe Healthcare Population Health office: 1307 Savannah Road, Lewes, DE 19958. The bins are monitored frequently throughout the day and donations are properly stored. For large quantity donations, please call us at 302-645-3337 or email kblanch@beebehealthcare.org. ',
      'Yes',
      '38.7602323',
      '-75.1546521'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beebe Healthcare'
        AND o.latitude = '38.7602323'
        AND o.longitude = '-75.1546521'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beebe Healthcare'
        AND o.latitude = '38.7602323'
        AND o.longitude = '-75.1546521'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beebe Healthcare'
        AND o.latitude = '38.7602323'
        AND o.longitude = '-75.1546521'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beebe Healthcare'
        AND o.latitude = '38.7602323'
        AND o.longitude = '-75.1546521'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beebe Healthcare'
        AND o.latitude = '38.7602323'
        AND o.longitude = '-75.1546521'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beebe Healthcare'
        AND o.latitude = '38.7602323'
        AND o.longitude = '-75.1546521'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beebe Healthcare'
        AND o.latitude = '38.7602323'
        AND o.longitude = '-75.1546521'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beebe Healthcare'
        AND o.latitude = '38.7602323'
        AND o.longitude = '-75.1546521'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beebe Healthcare'
        AND o.latitude = '38.7602323'
        AND o.longitude = '-75.1546521'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Brown paper lunch bags',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beebe Healthcare'
        AND o.latitude = '38.7602323'
        AND o.longitude = '-75.1546521'));

COMMIT;
