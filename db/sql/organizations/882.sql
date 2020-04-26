
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
      'Roane General Hospital',
      '200 Hospital Drive
Spencer, WV 25276',
      'Spencer',
      'WV',
      'ATTN: Doug Bentz or Nurses Station',
      'Yes',
      '38.8157318',
      '-81.3679449'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Roane General Hospital'
        AND o.latitude = '38.8157318'
        AND o.longitude = '-81.3679449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Roane General Hospital'
        AND o.latitude = '38.8157318'
        AND o.longitude = '-81.3679449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Roane General Hospital'
        AND o.latitude = '38.8157318'
        AND o.longitude = '-81.3679449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Roane General Hospital'
        AND o.latitude = '38.8157318'
        AND o.longitude = '-81.3679449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Roane General Hospital'
        AND o.latitude = '38.8157318'
        AND o.longitude = '-81.3679449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Roane General Hospital'
        AND o.latitude = '38.8157318'
        AND o.longitude = '-81.3679449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Roane General Hospital'
        AND o.latitude = '38.8157318'
        AND o.longitude = '-81.3679449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Roane General Hospital'
        AND o.latitude = '38.8157318'
        AND o.longitude = '-81.3679449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Roane General Hospital'
        AND o.latitude = '38.8157318'
        AND o.longitude = '-81.3679449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Roane General Hospital'
        AND o.latitude = '38.8157318'
        AND o.longitude = '-81.3679449'));

COMMIT;
