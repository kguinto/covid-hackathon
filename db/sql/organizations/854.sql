
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
      'Ashe Memorial Hospital',
      '200 Hospital Ave
Jefferson, NC 28640',
      'Jefferson',
      'NC',
      'ATTN: Dr. Brian Sachs',
      'Yes',
      '36.4234821',
      '-81.4577703'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ashe Memorial Hospital'
        AND o.latitude = '36.4234821'
        AND o.longitude = '-81.4577703'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ashe Memorial Hospital'
        AND o.latitude = '36.4234821'
        AND o.longitude = '-81.4577703'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ashe Memorial Hospital'
        AND o.latitude = '36.4234821'
        AND o.longitude = '-81.4577703'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ashe Memorial Hospital'
        AND o.latitude = '36.4234821'
        AND o.longitude = '-81.4577703'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ashe Memorial Hospital'
        AND o.latitude = '36.4234821'
        AND o.longitude = '-81.4577703'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ashe Memorial Hospital'
        AND o.latitude = '36.4234821'
        AND o.longitude = '-81.4577703'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ashe Memorial Hospital'
        AND o.latitude = '36.4234821'
        AND o.longitude = '-81.4577703'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ashe Memorial Hospital'
        AND o.latitude = '36.4234821'
        AND o.longitude = '-81.4577703'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ashe Memorial Hospital'
        AND o.latitude = '36.4234821'
        AND o.longitude = '-81.4577703'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ashe Memorial Hospital'
        AND o.latitude = '36.4234821'
        AND o.longitude = '-81.4577703'));

COMMIT;
