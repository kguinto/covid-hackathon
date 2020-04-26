
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
      'Beverly Hospital',
      '85 Herrick St
Beverly, MA 01915',
      'Beverly',
      'MA',
      'Attn: CCU Manager, or contact Mike Colancecco, critical care physician, to arrange drop off-781-901-4622',
      'No',
      '42.5640529',
      '-70.8757261'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beverly Hospital'
        AND o.latitude = '42.5640529'
        AND o.longitude = '-70.8757261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beverly Hospital'
        AND o.latitude = '42.5640529'
        AND o.longitude = '-70.8757261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beverly Hospital'
        AND o.latitude = '42.5640529'
        AND o.longitude = '-70.8757261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beverly Hospital'
        AND o.latitude = '42.5640529'
        AND o.longitude = '-70.8757261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beverly Hospital'
        AND o.latitude = '42.5640529'
        AND o.longitude = '-70.8757261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beverly Hospital'
        AND o.latitude = '42.5640529'
        AND o.longitude = '-70.8757261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beverly Hospital'
        AND o.latitude = '42.5640529'
        AND o.longitude = '-70.8757261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beverly Hospital'
        AND o.latitude = '42.5640529'
        AND o.longitude = '-70.8757261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beverly Hospital'
        AND o.latitude = '42.5640529'
        AND o.longitude = '-70.8757261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beverly Hospital'
        AND o.latitude = '42.5640529'
        AND o.longitude = '-70.8757261'));

COMMIT;
