
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
      'Heartlands Assisted Living in Severna Park',
      '715 Benfield Rd
Severna Park, MD 21146',
      'Severna Park',
      'MD',
      'attention: Lisa May bring and leave in front area of the building',
      'No',
      '39.085808',
      '-76.6043993'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heartlands Assisted Living in Severna Park'
        AND o.latitude = '39.085808'
        AND o.longitude = '-76.6043993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heartlands Assisted Living in Severna Park'
        AND o.latitude = '39.085808'
        AND o.longitude = '-76.6043993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heartlands Assisted Living in Severna Park'
        AND o.latitude = '39.085808'
        AND o.longitude = '-76.6043993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heartlands Assisted Living in Severna Park'
        AND o.latitude = '39.085808'
        AND o.longitude = '-76.6043993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heartlands Assisted Living in Severna Park'
        AND o.latitude = '39.085808'
        AND o.longitude = '-76.6043993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heartlands Assisted Living in Severna Park'
        AND o.latitude = '39.085808'
        AND o.longitude = '-76.6043993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heartlands Assisted Living in Severna Park'
        AND o.latitude = '39.085808'
        AND o.longitude = '-76.6043993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Heartlands Assisted Living in Severna Park'
        AND o.latitude = '39.085808'
        AND o.longitude = '-76.6043993'));

COMMIT;
