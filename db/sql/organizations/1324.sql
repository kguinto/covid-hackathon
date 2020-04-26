
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
      'Evans Memorial Hospital',
      '200 N River St
Claxton, GA 30417',
      'Claxton',
      'GA',
      'Drop off with staff at ER entrance.  ATTN: Nikki NeSmith',
      'Yes',
      '32.1661913',
      '-81.8987728'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Evans Memorial Hospital'
        AND o.latitude = '32.1661913'
        AND o.longitude = '-81.8987728'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Evans Memorial Hospital'
        AND o.latitude = '32.1661913'
        AND o.longitude = '-81.8987728'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Evans Memorial Hospital'
        AND o.latitude = '32.1661913'
        AND o.longitude = '-81.8987728'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Evans Memorial Hospital'
        AND o.latitude = '32.1661913'
        AND o.longitude = '-81.8987728'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Evans Memorial Hospital'
        AND o.latitude = '32.1661913'
        AND o.longitude = '-81.8987728'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Evans Memorial Hospital'
        AND o.latitude = '32.1661913'
        AND o.longitude = '-81.8987728'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Evans Memorial Hospital'
        AND o.latitude = '32.1661913'
        AND o.longitude = '-81.8987728'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Evans Memorial Hospital'
        AND o.latitude = '32.1661913'
        AND o.longitude = '-81.8987728'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Evans Memorial Hospital'
        AND o.latitude = '32.1661913'
        AND o.longitude = '-81.8987728'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Evans Memorial Hospital'
        AND o.latitude = '32.1661913'
        AND o.longitude = '-81.8987728'));

COMMIT;
