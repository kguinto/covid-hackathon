
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
      'Avamere at Chestnut Lane Assisted Living',
      '1219 NE 6th St
Gresham, OR 97030',
      'Gresham',
      'OR',
      'Attn: Renee Vairora',
      'No',
      '45.5016133',
      '-122.4195674'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere at Chestnut Lane Assisted Living'
        AND o.latitude = '45.5016133'
        AND o.longitude = '-122.4195674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere at Chestnut Lane Assisted Living'
        AND o.latitude = '45.5016133'
        AND o.longitude = '-122.4195674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere at Chestnut Lane Assisted Living'
        AND o.latitude = '45.5016133'
        AND o.longitude = '-122.4195674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere at Chestnut Lane Assisted Living'
        AND o.latitude = '45.5016133'
        AND o.longitude = '-122.4195674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere at Chestnut Lane Assisted Living'
        AND o.latitude = '45.5016133'
        AND o.longitude = '-122.4195674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere at Chestnut Lane Assisted Living'
        AND o.latitude = '45.5016133'
        AND o.longitude = '-122.4195674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Avamere at Chestnut Lane Assisted Living'
        AND o.latitude = '45.5016133'
        AND o.longitude = '-122.4195674'));

COMMIT;
